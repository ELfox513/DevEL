.class public final synthetic Lg5/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/i7;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lg5/i7;Landroid/os/Bundle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/j6;->a:Lg5/i7;

    iput-object p2, p0, Lg5/j6;->b:Landroid/os/Bundle;

    iput-wide p3, p0, Lg5/j6;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/j6;->a:Lg5/i7;

    iget-object v1, p0, Lg5/j6;->b:Landroid/os/Bundle;

    iget-wide v2, p0, Lg5/j6;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lg5/i7;->k(Landroid/os/Bundle;J)V

    return-void
.end method
