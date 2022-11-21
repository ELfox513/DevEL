.class public final Lb5/l2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Ljava/lang/Long;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Landroid/os/Bundle;

.field public final synthetic t:Z

.field public final synthetic u:Z

.field public final synthetic v:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Lb5/l2;->v:Lb5/y2;

    iput-object p2, p0, Lb5/l2;->p:Ljava/lang/Long;

    iput-object p3, p0, Lb5/l2;->q:Ljava/lang/String;

    iput-object p4, p0, Lb5/l2;->r:Ljava/lang/String;

    iput-object p5, p0, Lb5/l2;->s:Landroid/os/Bundle;

    iput-boolean p6, p0, Lb5/l2;->t:Z

    iput-boolean p7, p0, Lb5/l2;->u:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lb5/l2;->p:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lb5/n2;->a:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    iget-object v0, p0, Lb5/l2;->v:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb5/f1;

    iget-object v3, p0, Lb5/l2;->q:Ljava/lang/String;

    iget-object v4, p0, Lb5/l2;->r:Ljava/lang/String;

    iget-object v5, p0, Lb5/l2;->s:Landroid/os/Bundle;

    iget-boolean v6, p0, Lb5/l2;->t:Z

    iget-boolean v7, p0, Lb5/l2;->u:Z

    invoke-interface/range {v2 .. v9}, Lb5/f1;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
