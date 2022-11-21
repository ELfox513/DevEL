.class public final synthetic Lt3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lt3/y;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lt3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt3/t;->a:Z

    iput-object p2, p0, Lt3/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lt3/t;->c:Lt3/y;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lt3/t;->a:Z

    iget-object v1, p0, Lt3/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lt3/t;->c:Lt3/y;

    invoke-static {v0, v1, v2}, Lt3/c0;->e(ZLjava/lang/String;Lt3/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
