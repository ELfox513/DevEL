.class public final Lr4/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lr4/ge;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr4/ge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/fe;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr4/fe;->b:Lr4/ge;

    return-void
.end method

.method public static synthetic a(Lr4/fe;)Lr4/ge;
    .locals 0

    iget-object p0, p0, Lr4/fe;->b:Lr4/ge;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/gf;)V
    .locals 2

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v1, Lr4/zd;

    invoke-direct {v1, p0, p1}, Lr4/zd;-><init>(Lr4/fe;Lr4/gf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v8, Lr4/ae;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/ae;-><init>(Lr4/fe;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lr4/id;)V
    .locals 2

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v1, Lr4/be;

    invoke-direct {v1, p0, p1}, Lr4/be;-><init>(Lr4/fe;Lr4/id;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(IJJ)V
    .locals 9

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v8, Lr4/ce;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/ce;-><init>(Lr4/fe;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(Lr4/gf;)V
    .locals 2

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v1, Lr4/de;

    invoke-direct {v1, p0, p1}, Lr4/de;-><init>(Lr4/fe;Lr4/gf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lr4/fe;->a:Landroid/os/Handler;

    new-instance v1, Lr4/ee;

    invoke-direct {v1, p0, p1}, Lr4/ee;-><init>(Lr4/fe;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
