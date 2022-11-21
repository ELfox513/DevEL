.class public final Lg5/r7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/p7;

.field public final synthetic b:Lg5/p7;

.field public final synthetic d:J

.field public final synthetic k:Z

.field public final synthetic p:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;Lg5/p7;Lg5/p7;JZ)V
    .locals 0

    iput-object p1, p0, Lg5/r7;->p:Lg5/w7;

    iput-object p2, p0, Lg5/r7;->a:Lg5/p7;

    iput-object p3, p0, Lg5/r7;->b:Lg5/p7;

    iput-wide p4, p0, Lg5/r7;->d:J

    iput-boolean p6, p0, Lg5/r7;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg5/r7;->p:Lg5/w7;

    iget-object v1, p0, Lg5/r7;->a:Lg5/p7;

    iget-object v2, p0, Lg5/r7;->b:Lg5/p7;

    iget-wide v3, p0, Lg5/r7;->d:J

    iget-boolean v5, p0, Lg5/r7;->k:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lg5/w7;->r(Lg5/w7;Lg5/p7;Lg5/p7;JZLandroid/os/Bundle;)V

    return-void
.end method
