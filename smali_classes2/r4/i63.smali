.class public final Lr4/i63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lr4/p63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/p63<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/p63;Lr4/h83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/p63<",
            "TV;>;",
            "Lr4/h83<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i63;->a:Lr4/p63;

    iput-object p2, p0, Lr4/i63;->b:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/i63;->a:Lr4/p63;

    invoke-static {v0}, Lr4/p63;->m(Lr4/p63;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/i63;->b:Lr4/h83;

    invoke-static {v0}, Lr4/p63;->x(Lr4/h83;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lr4/p63;->l()Lr4/c63;

    move-result-object v1

    iget-object v2, p0, Lr4/i63;->a:Lr4/p63;

    invoke-virtual {v1, v2, p0, v0}, Lr4/c63;->e(Lr4/p63;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/i63;->a:Lr4/p63;

    invoke-static {v0}, Lr4/p63;->y(Lr4/p63;)V

    :cond_1
    return-void
.end method
