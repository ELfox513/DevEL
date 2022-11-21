.class public final synthetic Lh3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lh3/g0;

.field public final b:Ljava/util/List;

.field public final c:Lf4/a;


# direct methods
.method public constructor <init>(Lh3/g0;Ljava/util/List;Lf4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/s;->a:Lh3/g0;

    iput-object p2, p0, Lh3/s;->b:Ljava/util/List;

    iput-object p3, p0, Lh3/s;->c:Lf4/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh3/s;->a:Lh3/g0;

    iget-object v1, p0, Lh3/s;->b:Ljava/util/List;

    iget-object v2, p0, Lh3/s;->c:Lf4/a;

    invoke-virtual {v0, v1, v2}, Lh3/g0;->k7(Ljava/util/List;Lf4/a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
