.class public final Lr4/ij0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc4/f;

.field public final b:Lb3/y1;

.field public final c:Lr4/ik0;


# direct methods
.method public constructor <init>(Lc4/f;Lb3/y1;Lr4/ik0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ij0;->a:Lc4/f;

    iput-object p2, p0, Lr4/ij0;->b:Lb3/y1;

    iput-object p3, p0, Lr4/ij0;->c:Lr4/ik0;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 5

    sget-object v0, Lr4/rz;->k0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/ij0;->b:Lb3/y1;

    invoke-interface {v0}, Lb3/y1;->N()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-string p1, "Receiving npa decision in the past, ignoring."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lr4/rz;->l0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lr4/ij0;->b:Lb3/y1;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lb3/y1;->U0(I)V

    iget-object p1, p0, Lr4/ij0;->b:Lb3/y1;

    invoke-interface {p1, p2, p3}, Lb3/y1;->a1(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/ij0;->b:Lb3/y1;

    invoke-interface {v0, p1}, Lb3/y1;->U0(I)V

    iget-object p1, p0, Lr4/ij0;->b:Lb3/y1;

    invoke-interface {p1, p2, p3}, Lb3/y1;->a1(J)V

    :goto_0
    invoke-virtual {p0}, Lr4/ij0;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lr4/rz;->l0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/ij0;->c:Lr4/ik0;

    invoke-virtual {v0}, Lr4/ik0;->f()Z

    return-void
.end method
