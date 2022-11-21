.class public final Lb5/t1;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Landroid/app/Activity;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb5/t1;->s:Lb5/y2;

    iput-object p2, p0, Lb5/t1;->p:Landroid/app/Activity;

    iput-object p3, p0, Lb5/t1;->q:Ljava/lang/String;

    iput-object p4, p0, Lb5/t1;->r:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lb5/t1;->s:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb5/f1;

    iget-object v0, p0, Lb5/t1;->p:Landroid/app/Activity;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    iget-object v3, p0, Lb5/t1;->q:Ljava/lang/String;

    iget-object v4, p0, Lb5/t1;->r:Ljava/lang/String;

    iget-wide v5, p0, Lb5/n2;->a:J

    invoke-interface/range {v1 .. v6}, Lb5/f1;->setCurrentScreen(Lf4/a;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
