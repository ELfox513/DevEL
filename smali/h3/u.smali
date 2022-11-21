.class public final synthetic Lh3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lh3/g0;

.field public final b:Landroid/net/Uri;

.field public final c:Lf4/a;


# direct methods
.method public constructor <init>(Lh3/g0;Landroid/net/Uri;Lf4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/u;->a:Lh3/g0;

    iput-object p2, p0, Lh3/u;->b:Landroid/net/Uri;

    iput-object p3, p0, Lh3/u;->c:Lf4/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh3/u;->a:Lh3/g0;

    iget-object v1, p0, Lh3/u;->b:Landroid/net/Uri;

    iget-object v2, p0, Lh3/u;->c:Lf4/a;

    invoke-virtual {v0, v1, v2}, Lh3/g0;->i7(Landroid/net/Uri;Lf4/a;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
