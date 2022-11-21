.class public final synthetic Lr4/ts0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hp;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr4/ts0;->a:Z

    iput p2, p0, Lr4/ts0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lr4/xq;)V
    .locals 4

    iget-boolean v0, p0, Lr4/ts0;->a:Z

    iget v1, p0, Lr4/ts0;->b:I

    sget v2, Lr4/xs0;->l0:I

    invoke-static {}, Lr4/ft;->D()Lr4/et;

    move-result-object v2

    invoke-virtual {v2}, Lr4/et;->v()Z

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2, v0}, Lr4/et;->x(Z)Lr4/et;

    :cond_0
    invoke-virtual {v2, v1}, Lr4/et;->z(I)Lr4/et;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/ft;

    invoke-virtual {p1, v0}, Lr4/xq;->J(Lr4/ft;)Lr4/xq;

    return-void
.end method
