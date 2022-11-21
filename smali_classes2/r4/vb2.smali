.class public final Lr4/vb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/w41;

.field public final d:Lr4/iq2;

.field public final e:Lr4/hp2;

.field public final f:Lb3/y1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/vb2;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lr4/w41;Lr4/iq2;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vb2;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/vb2;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/vb2;->c:Lr4/w41;

    iput-object p4, p0, Lr4/vb2;->d:Lr4/iq2;

    iput-object p5, p0, Lr4/vb2;->e:Lr4/hp2;

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object p1

    iput-object p1, p0, Lr4/vb2;->f:Lb3/y1;

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lr4/rz;->S3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "quality_signals"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lr4/rz;->R3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lr4/vb2;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/vb2;->c:Lr4/w41;

    iget-object v1, p0, Lr4/vb2;->e:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->d:Lr4/tt;

    invoke-virtual {v0, v1}, Lr4/w41;->a(Lr4/tt;)V

    const-string v0, "quality_signals"

    iget-object v1, p0, Lr4/vb2;->d:Lr4/iq2;

    invoke-virtual {v1}, Lr4/iq2;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    iget-object p1, p0, Lr4/vb2;->c:Lr4/w41;

    iget-object v0, p0, Lr4/vb2;->e:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->d:Lr4/tt;

    invoke-virtual {p1, v0}, Lr4/w41;->a(Lr4/tt;)V

    const-string p1, "quality_signals"

    iget-object v0, p0, Lr4/vb2;->d:Lr4/iq2;

    invoke-virtual {v0}, Lr4/iq2;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string p1, "seq_num"

    iget-object v0, p0, Lr4/vb2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/vb2;->f:Lb3/y1;

    invoke-interface {p1}, Lb3/y1;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lr4/vb2;->b:Ljava/lang/String;

    :goto_1
    const-string v0, "session_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lr4/rz;->S3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/vb2;->c:Lr4/w41;

    iget-object v2, p0, Lr4/vb2;->e:Lr4/hp2;

    iget-object v2, v2, Lr4/hp2;->d:Lr4/tt;

    invoke-virtual {v1, v2}, Lr4/w41;->a(Lr4/tt;)V

    iget-object v1, p0, Lr4/vb2;->d:Lr4/iq2;

    invoke-virtual {v1}, Lr4/iq2;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Lr4/ub2;

    invoke-direct {v1, p0, v0}, Lr4/ub2;-><init>(Lr4/vb2;Landroid/os/Bundle;)V

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
