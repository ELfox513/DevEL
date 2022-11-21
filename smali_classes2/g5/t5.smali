.class public final Lg5/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:J

.field public final synthetic p:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lg5/t5;->p:Lg5/u5;

    iput-object p2, p0, Lg5/t5;->a:Ljava/lang/String;

    iput-object p3, p0, Lg5/t5;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/t5;->d:Ljava/lang/String;

    iput-wide p5, p0, Lg5/t5;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg5/t5;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/t5;->p:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->b0()Lg5/b5;

    move-result-object v0

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    iget-object v1, p0, Lg5/t5;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg5/w7;->B(Ljava/lang/String;Lg5/p7;)V

    return-void

    :cond_0
    new-instance v1, Lg5/p7;

    iget-object v2, p0, Lg5/t5;->d:Ljava/lang/String;

    iget-wide v3, p0, Lg5/t5;->k:J

    invoke-direct {v1, v2, v0, v3, v4}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lg5/t5;->p:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->b0()Lg5/b5;

    move-result-object v0

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    iget-object v2, p0, Lg5/t5;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lg5/w7;->B(Ljava/lang/String;Lg5/p7;)V

    return-void
.end method
