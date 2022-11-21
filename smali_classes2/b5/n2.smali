.class public abstract Lb5/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J

.field public final d:Z

.field public final synthetic k:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Z)V
    .locals 2

    iput-object p1, p0, Lb5/n2;->k:Lb5/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb5/y2;->b:Lc4/f;

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lb5/n2;->a:J

    iget-object p1, p1, Lb5/y2;->b:Lc4/f;

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lb5/n2;->b:J

    iput-boolean p2, p0, Lb5/n2;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lb5/n2;->k:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->h(Lb5/y2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/n2;->b()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lb5/n2;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb5/n2;->k:Lb5/y2;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lb5/n2;->d:Z

    invoke-static {v1, v0, v2, v3}, Lb5/y2;->E(Lb5/y2;Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lb5/n2;->b()V

    return-void
.end method
