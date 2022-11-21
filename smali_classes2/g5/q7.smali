.class public final Lg5/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lg5/p7;

.field public final synthetic d:Lg5/p7;

.field public final synthetic k:J

.field public final synthetic p:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;Landroid/os/Bundle;Lg5/p7;Lg5/p7;J)V
    .locals 0

    iput-object p1, p0, Lg5/q7;->p:Lg5/w7;

    iput-object p2, p0, Lg5/q7;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lg5/q7;->b:Lg5/p7;

    iput-object p4, p0, Lg5/q7;->d:Lg5/p7;

    iput-wide p5, p0, Lg5/q7;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg5/q7;->p:Lg5/w7;

    iget-object v1, p0, Lg5/q7;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lg5/q7;->b:Lg5/p7;

    iget-object v3, p0, Lg5/q7;->d:Lg5/p7;

    iget-wide v4, p0, Lg5/q7;->k:J

    invoke-static/range {v0 .. v5}, Lg5/w7;->s(Lg5/w7;Landroid/os/Bundle;Lg5/p7;Lg5/p7;J)V

    return-void
.end method
