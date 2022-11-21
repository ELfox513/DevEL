.class public final Lg5/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;J)V
    .locals 0

    iput-object p1, p0, Lg5/t7;->b:Lg5/w7;

    iput-wide p2, p0, Lg5/t7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/t7;->b:Lg5/w7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    iget-wide v1, p0, Lg5/t7;->a:J

    invoke-virtual {v0, v1, v2}, Lg5/d2;->i(J)V

    iget-object v0, p0, Lg5/t7;->b:Lg5/w7;

    const/4 v1, 0x0

    iput-object v1, v0, Lg5/w7;->e:Lg5/p7;

    return-void
.end method
