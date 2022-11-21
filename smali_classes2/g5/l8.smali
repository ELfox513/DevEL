.class public final Lg5/l8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Z

.field public final synthetic d:Lg5/u;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic p:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;ZLg5/pa;ZLg5/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/l8;->p:Lg5/w8;

    iput-object p3, p0, Lg5/l8;->a:Lg5/pa;

    iput-boolean p4, p0, Lg5/l8;->b:Z

    iput-object p5, p0, Lg5/l8;->d:Lg5/u;

    iput-object p6, p0, Lg5/l8;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/l8;->p:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/l8;->p:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lg5/l8;->a:Lg5/pa;

    invoke-static {v1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/l8;->p:Lg5/w8;

    iget-boolean v2, p0, Lg5/l8;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg5/l8;->d:Lg5/u;

    :goto_0
    iget-object v3, p0, Lg5/l8;->a:Lg5/pa;

    invoke-virtual {v1, v0, v2, v3}, Lg5/w8;->m(Lg5/g3;Ly3/a;Lg5/pa;)V

    iget-object v0, p0, Lg5/l8;->p:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->K(Lg5/w8;)V

    return-void
.end method
