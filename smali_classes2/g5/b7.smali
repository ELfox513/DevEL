.class public final Lg5/b7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/h;

.field public final synthetic b:J

.field public final synthetic d:I

.field public final synthetic k:J

.field public final synthetic p:Z

.field public final synthetic q:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Lg5/h;JIJZ)V
    .locals 0

    iput-object p1, p0, Lg5/b7;->q:Lg5/i7;

    iput-object p2, p0, Lg5/b7;->a:Lg5/h;

    iput-wide p3, p0, Lg5/b7;->b:J

    iput p5, p0, Lg5/b7;->d:I

    iput-wide p6, p0, Lg5/b7;->k:J

    iput-boolean p8, p0, Lg5/b7;->p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lg5/b7;->q:Lg5/i7;

    iget-object v1, p0, Lg5/b7;->a:Lg5/h;

    invoke-virtual {v0, v1}, Lg5/i7;->H(Lg5/h;)V

    iget-object v0, p0, Lg5/b7;->q:Lg5/i7;

    iget-wide v1, p0, Lg5/b7;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lg5/i7;->u(JZ)V

    iget-object v4, p0, Lg5/b7;->q:Lg5/i7;

    iget-object v5, p0, Lg5/b7;->a:Lg5/h;

    iget v6, p0, Lg5/b7;->d:I

    iget-wide v7, p0, Lg5/b7;->k:J

    iget-boolean v10, p0, Lg5/b7;->p:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lg5/i7;->d0(Lg5/i7;Lg5/h;IJZZ)V

    return-void
.end method
