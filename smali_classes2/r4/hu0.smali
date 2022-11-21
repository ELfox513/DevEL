.class public final Lr4/hu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Ljava/lang/ref/WeakReference<",
        "Landroid/content/Context;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/eu0;


# direct methods
.method public constructor <init>(Lr4/eu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hu0;->a:Lr4/eu0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/hu0;->a:Lr4/eu0;

    invoke-virtual {v0}, Lr4/eu0;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/hu0;->a:Lr4/eu0;

    invoke-virtual {v0}, Lr4/eu0;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
