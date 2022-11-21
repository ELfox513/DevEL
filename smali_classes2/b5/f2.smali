.class public final Lb5/f2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb5/f2;->r:Lb5/y2;

    iput-object p4, p0, Lb5/f2;->p:Ljava/lang/String;

    iput-object p5, p0, Lb5/f2;->q:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lb5/f2;->r:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb5/f1;

    iget-object v3, p0, Lb5/f2;->p:Ljava/lang/String;

    iget-object v0, p0, Lb5/f2;->q:Ljava/lang/Object;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v5

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v6

    const/4 v2, 0x5

    invoke-interface/range {v1 .. v6}, Lb5/f1;->logHealthData(ILjava/lang/String;Lf4/a;Lf4/a;Lf4/a;)V

    return-void
.end method
