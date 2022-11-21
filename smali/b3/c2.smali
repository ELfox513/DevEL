.class public final synthetic Lb3/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/c2;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb3/c2;->a:Landroid/net/Uri;

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v0}, Lb3/k2;->r(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
