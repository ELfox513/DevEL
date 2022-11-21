.class public final Lr4/mj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lc4/f;

.field public c:Lb3/y1;

.field public d:Lr4/ik0;


# direct methods
.method public synthetic constructor <init>(Lr4/nj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lr4/mj0;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/mj0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lc4/f;)Lr4/mj0;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/mj0;->b:Lc4/f;

    return-object p0
.end method

.method public final c(Lb3/y1;)Lr4/mj0;
    .locals 0

    iput-object p1, p0, Lr4/mj0;->c:Lb3/y1;

    return-object p0
.end method

.method public final d(Lr4/ik0;)Lr4/mj0;
    .locals 0

    iput-object p1, p0, Lr4/mj0;->d:Lr4/ik0;

    return-object p0
.end method

.method public final e()Lr4/jk0;
    .locals 8

    iget-object v0, p0, Lr4/mj0;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/mj0;->b:Lc4/f;

    const-class v1, Lc4/f;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/mj0;->c:Lb3/y1;

    const-class v1, Lb3/y1;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/mj0;->d:Lr4/ik0;

    const-class v1, Lr4/ik0;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lr4/oj0;

    iget-object v3, p0, Lr4/mj0;->a:Landroid/content/Context;

    iget-object v4, p0, Lr4/mj0;->b:Lc4/f;

    iget-object v5, p0, Lr4/mj0;->c:Lb3/y1;

    iget-object v6, p0, Lr4/mj0;->d:Lr4/ik0;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lr4/oj0;-><init>(Landroid/content/Context;Lc4/f;Lb3/y1;Lr4/ik0;Lr4/nj0;)V

    return-object v0
.end method
