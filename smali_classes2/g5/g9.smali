.class public final Lg5/g9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J

.field public final synthetic d:Lg5/h9;


# direct methods
.method public constructor <init>(Lg5/h9;JJ)V
    .locals 0

    iput-object p1, p0, Lg5/g9;->d:Lg5/h9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lg5/g9;->a:J

    iput-wide p4, p0, Lg5/g9;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/g9;->d:Lg5/h9;

    iget-object v0, v0, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/f9;

    invoke-direct {v1, p0}, Lg5/f9;-><init>(Lg5/g9;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method
