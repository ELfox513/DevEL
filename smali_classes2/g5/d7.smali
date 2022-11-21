.class public final Lg5/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/h;

.field public final synthetic b:I

.field public final synthetic d:J

.field public final synthetic k:Z

.field public final synthetic p:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Lg5/h;IJZ)V
    .locals 0

    iput-object p1, p0, Lg5/d7;->p:Lg5/i7;

    iput-object p2, p0, Lg5/d7;->a:Lg5/h;

    iput p3, p0, Lg5/d7;->b:I

    iput-wide p4, p0, Lg5/d7;->d:J

    iput-boolean p6, p0, Lg5/d7;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lg5/d7;->p:Lg5/i7;

    iget-object v1, p0, Lg5/d7;->a:Lg5/h;

    invoke-virtual {v0, v1}, Lg5/i7;->H(Lg5/h;)V

    iget-object v2, p0, Lg5/d7;->p:Lg5/i7;

    iget-object v3, p0, Lg5/d7;->a:Lg5/h;

    iget v4, p0, Lg5/d7;->b:I

    iget-wide v5, p0, Lg5/d7;->d:J

    iget-boolean v8, p0, Lg5/d7;->k:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lg5/i7;->d0(Lg5/i7;Lg5/h;IJZZ)V

    return-void
.end method
