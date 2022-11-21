.class public final Lr4/y51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ga1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/hp2;

.field public final d:Lr4/im0;

.field public final k:Lb3/y1;

.field public final p:Lr4/pu1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/hp2;Lr4/im0;Lb3/y1;Lr4/pu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y51;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/y51;->b:Lr4/hp2;

    iput-object p3, p0, Lr4/y51;->d:Lr4/im0;

    iput-object p4, p0, Lr4/y51;->k:Lb3/y1;

    iput-object p5, p0, Lr4/y51;->p:Lr4/pu1;

    return-void
.end method


# virtual methods
.method public final A0(Lr4/bp2;)V
    .locals 0

    return-void
.end method

.method public final c0(Lr4/og0;)V
    .locals 4

    sget-object p1, Lr4/rz;->t2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/y51;->k:Lb3/y1;

    invoke-interface {p1}, Lb3/y1;->p()Lr4/hl0;

    move-result-object p1

    invoke-static {}, Lz2/t;->l()Lz2/e;

    move-result-object v0

    iget-object v1, p0, Lr4/y51;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/y51;->d:Lr4/im0;

    iget-object v3, p0, Lr4/y51;->b:Lr4/hp2;

    iget-object v3, v3, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lz2/e;->b(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lr4/hl0;)V

    :cond_0
    iget-object p1, p0, Lr4/y51;->p:Lr4/pu1;

    invoke-virtual {p1}, Lr4/pu1;->i()V

    return-void
.end method
