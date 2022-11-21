.class public final Lg5/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/p7;

.field public final synthetic b:J

.field public final synthetic d:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;Lg5/p7;J)V
    .locals 0

    iput-object p1, p0, Lg5/u7;->d:Lg5/w7;

    iput-object p2, p0, Lg5/u7;->a:Lg5/p7;

    iput-wide p3, p0, Lg5/u7;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg5/u7;->d:Lg5/w7;

    iget-object v1, p0, Lg5/u7;->a:Lg5/p7;

    iget-wide v2, p0, Lg5/u7;->b:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lg5/w7;->t(Lg5/w7;Lg5/p7;ZJ)V

    iget-object v0, p0, Lg5/u7;->d:Lg5/w7;

    const/4 v1, 0x0

    iput-object v1, v0, Lg5/w7;->e:Lg5/p7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg5/w8;->p(Lg5/p7;)V

    return-void
.end method
