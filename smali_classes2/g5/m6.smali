.class public final Lg5/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;J)V
    .locals 0

    iput-object p1, p0, Lg5/m6;->b:Lg5/i7;

    iput-wide p2, p0, Lg5/m6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/m6;->b:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->k:Lg5/b4;

    iget-wide v1, p0, Lg5/m6;->a:J

    invoke-virtual {v0, v1, v2}, Lg5/b4;->b(J)V

    iget-object v0, p0, Lg5/m6;->b:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    iget-wide v1, p0, Lg5/m6;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
